<?php

class VolunteerModel extends Model {
    public function getAllPrograms() {
        $query = "SELECT * FROM program ORDER BY activity_id DESC";
        $result = $this->dbconn->query($query);
        return $result ? $result->fetch_all(MYSQLI_ASSOC) : [];
    }

    public function getProgramById($activity_id) {
        $query = "SELECT * FROM program WHERE activity_id = ?";
        $stmt = $this->dbconn->prepare($query);
        $stmt->bind_param("i", $activity_id);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result ? $result->fetch_assoc() : null;
    }

    public function registerVolunteer($user_id, $activity_id, $fullname, $email, $phone, $address, $motivation, $fileName = null) {
        // Sesuaikan dengan kolom yang ada di tabel volunteer
        $query = "INSERT INTO volunteer (activity_id, fullname, email, phone, address, motivation, file_support) 
                  VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt = $this->dbconn->prepare($query);
        
        if (!$stmt) {
            return false;
        }
        
        $stmt->bind_param("issssss", $activity_id, $fullname, $email, $phone, $address, $motivation, $fileName);
        return $stmt->execute();
    }
}