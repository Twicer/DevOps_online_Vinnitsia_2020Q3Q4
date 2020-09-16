#!/bin/bash

# Custom nmap v1.0.0 by Denys Koval

customAll() {
    # List of ip subnets
    subnet_list=`ip -4 a | grep inet | cut -f1 -d / | awk '{print $2}' | cut -f1,2,3 -d .`

    # Cycle for separating each sebnet form subnet list
    for separate_subnet in $subnet_list; do
        # Checking if subnet is localhost subnet (127.0.0) then skip cycle iteration 
        if [ "${separate_subnet}" = "127.0.0" ]; then
            continue
        fi
        printf "\n\n\tIP subnet: ${separate_subnet}.0/24 \n"

        # Cycle that go through each subnet (for instance 192.168.0.0/24)
        for range in {1..254}; do
            # Write separate ip to the variable
            separate_ip=$separate_subnet.$range
            
            # Check if ip address is reachable then print it and its host name
            if timeout 0.05 ping -c 1 $separate_ip > /dev/null; then
                host_name=`host "${separate_ip}"`

                separateOutput
                # Print results 
                printf ">>> IP address:\t ${separate_ip}\n"
                printf ">>> Host name:\t ${host_name}\n"
                separateOutput
            fi
        done
    done
    printf "\nIP scan is finished!\n\n"
}


customTarget() {
    printf "\t\tPort scanning\n"
    
    # Check if the port number is defined
    if [[ ($2 -gt 0) && ($2 -le 65535) ]]; then
        separateOutput
        # Check connection to IP address through defined port
        nc -znv "${1}" "${2}"
    # If port number is not defined, scan the connection through all ports
    elif [ -z "${2}" ]; then
        separateOutput
        nc -zv "${1}" 1-65535 2>&1 | grep succeeded
    else
        printf "custom_nmap: port number invalid: $3\n"
    fi
    
    separateOutput
}


customMan() {
    echo "Custom nmap v1.0.0 by Denys Koval"

cat <<EOF
Usage: custom_nmap [OPTION]
OPTIONS
    --all, -a
        Display the reachable IP addresses and its symbolic names of all hosts in the current subnet.
    --target, -t <IP> <Port>
        If only <IP> is speified display the list of open systen TCP ports in specified IP.
        If specified <IP> <Port> display if TCP <Port> is open in specified IP.
EOF
}


separateOutput() {
    # Separating lines
    printf '#%.0s' {1..50}
    printf '\n'
}





#############----Main----#############


if [[ -z "${1}"  ||  "${1}" = --help ]]; then
    customMan
elif [[ "${1}" = --all || "${1}" = -a ]]; then
    customAll
elif [[ "${1}" = --target || "${1}" = -t ]]; then
    if [ -n "${2}" ]; then
        customTarget $2 $3
    else
        customMan
    fi
else
    customMan
fi
