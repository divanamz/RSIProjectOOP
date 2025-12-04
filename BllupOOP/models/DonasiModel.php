<?php

class DonasiModel extends Model {
    
    public function createDonasi($firstname, $lastname, $email, $country, $phone, $amount, $method, $anonymous) {
        $status = 'pending';
        $query = "INSERT INTO donasi 
                  (firstname, lastname, email, country, phone, donation_amount, payment_method, anonymous_donation, status) 
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $stmt = $this->dbconn->prepare($query);
        if (!$stmt) {
            return ['status' => 'fail', 'error' => $this->dbconn->error];
        }

        // types: s(firstname) s(lastname) s(email) s(country) s(phone) d(amount) s(method) i(anonymous) s(status)
        $stmt->bind_param(
            "sssssdsis",
            $firstname,
            $lastname,
            $email,
            $country,
            $phone,
            $amount,
            $method,
            $anonymous,
            $status
        );

        if ($stmt->execute()) {
            $insertId = $this->dbconn->insert_id;
            // return stats including pending donations so UI reflects immediate contribution
            $stats = $this->getDonationStats(false);
            return [
                'status' => 'success',
                'donasi_id' => $insertId,
                'stats' => $stats
            ];
        } else {
            return ['status' => 'fail', 'error' => $stmt->error];
        }
    }
    
    public function updateDonasiStatus($donasi_id, $newStatus) {
        $query = "UPDATE donasi SET status = ? WHERE donasi_id = ?";
        $stmt = $this->dbconn->prepare($query);

        if (!$stmt) {
            return ['status' => 'fail', 'error' => $this->dbconn->error];
        }

        $stmt->bind_param("si", $newStatus, $donasi_id);

        if ($stmt->execute()) {
            $stats = $this->getDonationStats(true);
            return ['status' => 'success', 'stats' => $stats];
        } else {
            return ['status' => 'fail', 'error' => $stmt->error];
        }
    }
    
    public function getDonationStats($onlySuccess = true) {
        if ($onlySuccess) {
            $query = "SELECT COUNT(*) AS total_donors, COALESCE(SUM(donation_amount),0) AS total_amount FROM donasi WHERE status = 'success'";
        } else {
            $query = "SELECT COUNT(*) AS total_donors, COALESCE(SUM(donation_amount),0) AS total_amount FROM donasi";
        }

        $result = $this->dbconn->query($query);
        if ($result) {
            return $result->fetch_assoc();
        }

        return ['total_donors' => 0, 'total_amount' => 0];
    }
}