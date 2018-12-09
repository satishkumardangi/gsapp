CREATE TABLE user (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(60) NOT NULL ,
  email VARCHAR(255) NULL,
  dob DATETIME NULL,
  PRIMARY KEY (username));

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES user (username));

INSERT INTO user(username,password,email,dob)
VALUES ('satish','$2a$10$04TVADrR6/SPLBjsK0N30.Jf5fNjBugSACeGv1S69dZALR7lSov0y','satishkumardangi@gmail.com', '1988-03-03');

INSERT INTO user_roles (username, role)
VALUES ('b', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('satish', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('a', 'ROLE_USER');