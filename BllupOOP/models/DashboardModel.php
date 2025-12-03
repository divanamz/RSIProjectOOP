<?php

class DashboardModel extends Model
{
    public function getLatestVolunteers($limit = 4)
    {
        $limit = (int)$limit;
        $sql = "SELECT * FROM program ORDER BY activity_id DESC LIMIT {$limit}";
        $res = $this->dbconn->query($sql);
        return $res ? $res->fetch_all(MYSQLI_ASSOC) : [];
    }

    public function getLatestBlogs($limit = 4)
    {
        $limit = (int)$limit;
        $sql = "
            SELECT 
                b.blog_id, 
                b.title_blog, 
                LEFT(b.content_blog, 150) AS excerpt, 
                b.date_posted, 
                u.email AS author_email,
                a.fullname AS author_name,
                b.image_path,
                GROUP_CONCAT(t.tag_name SEPARATOR ', ') AS tags
            FROM blog b
            JOIN users u ON b.user_id = u.id
            LEFT JOIN user_profiles a ON a.user_id = u.id
            LEFT JOIN blog_tag bt ON bt.blog_id = b.blog_id
            LEFT JOIN tag t ON t.tag_id = bt.tag_id
            GROUP BY b.blog_id
            ORDER BY b.date_posted DESC
            LIMIT {$limit}
        ";
        $res = $this->dbconn->query($sql);
        return $res ? $res->fetch_all(MYSQLI_ASSOC) : [];
    }

    public function getLatestForums($limit = 4)
    {
        $limit = (int)$limit;
        $sql = "SELECT id, title, content, created_at FROM forum_posts ORDER BY created_at DESC LIMIT {$limit}";
        $res = $this->dbconn->query($sql);
        return $res ? $res->fetch_all(MYSQLI_ASSOC) : [];
    }

    public function getLatestMerch($limit = 4)
    {
        $limit = (int)$limit;
        $sql = "SELECT merch_id, merch_name, merch_pict, price FROM merchandise ORDER BY merch_id DESC LIMIT {$limit}";
        $res = $this->dbconn->query($sql);
        return $res ? $res->fetch_all(MYSQLI_ASSOC) : [];
    }
}