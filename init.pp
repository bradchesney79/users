Input is u_group_list, u_user_list, u_uid_list, &&/|| output_type (p_username_list or p_uid_list)

Verify OS
Include apt


If u_user_list, u_uid_list, or u_group_list lists specified {

if u_group_list {

convert u_group_list to p_group_list

if output_type == uid {

If p_group_list > 0 {

for each p_group {

convert p_groups to p_uids lists

append p_uids to p_uid_list list

}

}

}
else {

If p_group_list > 0 {

for each p_group {

convert p_groups to p_users lists

append p_users to p_user_list list

}

}

}



if output_type == uid {

if u_uid_list > 0 {

convert u_uid_list to p_uid_list

}

}
else {

Uid to username

}

}
else {


Set default uid 1000 user as single list member in p_uid_list

}






}



If p_group_list > 0 {

for each p_group {

convert p_group users to user list

append user list to p_user_list list

}

}

If p_user_list > 0 {

for each p_user {

convert p_user to a p_uid

append p_uid to p_uid_list

}



If p_uid list specified {


Add users to dialout group
Add packages

