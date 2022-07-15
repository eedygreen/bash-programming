#! /bin/bash

# pass the arguement upon running the script

echo -e "Enter the service you want to rent: \c"
read -r transport_service

# case expression in 
#      pattern)
#       do_something;;
#      pattern)
#       do_something;;
# esac

case $transport_service in
    "car")
        echo "The rent price for $transport_service is \$3.00" ;;
    "pickup")
        echo "The rent price for $transport_service is \$6.00" ;;
    "bus")
        echo "The rent price for $transport_service is \$1.20" ;;
    "truck")
        echo "The rent price for $transport_service is \$12.00" ;;
    "tricycle")
        echo "The rent price for $transport_service is \$1.50" ;;
    "motocycle")
        echo "The rent price for $transport_service is \$2.40" ;;
    *)
        echo "The rent price for $transport_service is unknown" ;;
esac  
