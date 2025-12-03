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
        
        $stmt->bind_param(
            "sssssissi",
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
            return [
                'status' => 'success',
                'donasi_id' => $this->dbconn->insert_id
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
            return ['status' => 'success'];
        } else {
            return ['status' => 'fail', 'error' => $stmt->error];
        }
    }
    
    public function getDonationStats() {
        $query = "SELECT COUNT(*) as total_donors, SUM(donation_amount) as total_amount FROM donasi WHERE status = 'success'";
        $result = $this->dbconn->query($query);
        return $result ? $result->fetch_assoc() : null;
    }
}