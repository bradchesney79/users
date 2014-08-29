Input is u_group_list, u_user_list, u_uid_list, &&/|| output_type (p_username_list or p_uid_list)

Verify OS
Include apt


If u_user_list, u_uid_list, or u_group_list lists specified {

if u_group_list > 0 {

convert u_group_list to i_group_list

if output_type == uid {

If i_group_list > 0 {

for each i_group {

convert i_groups to i_uids_list lists

for each i_uid_list { 
for each i_uid {
append i_uid to p_uid_list
}
}
}

}

}
else {

If i_group_list > 0 {

for each i_group_list {

convert i_groups to i_users lists

append i_users to i_user_list list
for each i_user_list { 
for each i_user {
append i_user to p_user_list
}
}
}

}

}



if output_type == uid {

if u_uid_list > 0 {

convert u_uid_list to i_uid_list
append i_uid_list to p_uid_list
}

}
else {

if u_username_list > 0 {

convert u_user_list to i_user_list
append i_user_list to p_user_list
}

}

}

}

}
else {


Set default uid 1000 user as single list member in p_uid_list

}






}


Add users to dialout group
Add packages

