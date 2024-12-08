resource "aws_lightsail_instance" "server1" {
  name              = "mytfmlightsail"
  availability_zone = "us-east-1a"
  blueprint_id      = "centos_stream_9"
  bundle_id         = "nano_2_0"
  user_data         = file("userdata.sh")
}

resource "aws_iam_user" "name" {
  name = "ezekiel"
}

resource "aws_iam_group" "group" {
  name = "DevopsTeam"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.name.name,
  ]

  group = aws_iam_group.group.name
}

