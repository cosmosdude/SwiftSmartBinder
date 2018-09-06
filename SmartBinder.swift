infix operator <-

func <- < T >(_ lhs: inout T, _ rhs: Any) {
    lhs = rhs as! T
}

func <- < T > (_ lhs: inout T, _ rhs: Any?) {
    if let value = rhs as? T {
        lhs = value;
    }
}
