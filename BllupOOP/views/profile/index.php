<div class="container">
    <h2>My Profile</h2>

    <div class="card p-4">
        <h4><?= $profile->fullname ?></h4>
        <p>Email: <?= $profile->email ?></p>

        <a href="profile/edit" class="btn btn-primary">Edit Profile</a>

        <hr>

        <div class="row">
            <div class="col-md-6">
                <strong>Nickname:</strong> <?= $profile->nickname ?><br>
                <strong>Gender:</strong> <?= $profile->gender ?><br>
                <strong>Date of Birth:</strong> <?= $profile->date_of_birth ?><br>
            </div>
            <div class="col-md-6">
                <strong>Phone:</strong> <?= $profile->phone_number ?><br>
                <strong>Country:</strong> <?= $profile->country ?><br>
                <strong>Address:</strong> <?= $profile->address ?><br>
            </div>
        </div>
    </div>
</div>
