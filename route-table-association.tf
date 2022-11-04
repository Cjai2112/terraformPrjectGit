# associating route table to public web subnet 1

resource "aws_route_table_association" "pub-route1" {
    subnet_id      = aws_subnet.public-subnet-1.id
    route_table_id = aws_route_table.public-route-table.id  
}

#associating route table to public web subnet 2
resource "aws_route_table_association" "pub-route1" {
    subnet_id      = aws_subnet.public-subnet-2.id
    route_table_id = aws_route_table.public-route-table.id  
}

#associating route table to private1 application subnet 
resource "aws_route_table_association" "private-route1" {
    subnet_id      = aws_subnet.application-subnet-1.id
    route_table_id = aws_route_table.private1.id  
}

#associating route table to private2 application subnet
resource "aws_route_table_association" "private-route2" {
    subnet_id      = aws_subnet.application-subnet-2.id
    route_table_id = aws_route_table.private2.id  
}

#associating route table to private 3 databace subnet 
resource "aws_route_table_association" "private-route3"{
    subnet_id      = aws_subnet.database-subnet-1
    route_table_id = aws_route_table.private3.id  
}

resource "aws_route_table_association" "private-route4"{
    subnet_id      = aws_subnet.database-subnet-2
    route_table_id = aws_route_table.private4.id  
}