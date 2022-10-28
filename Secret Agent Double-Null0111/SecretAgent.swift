func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func secretFunc(pw: String) -> String {
        if pw == password {
            return secret
        }
        return "Sorry. No hidden secrets here."
    } 
    return secretFunc
}
func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let p1 = f(room)
    let p2 = f(p1)
    let p3 = f(p2)
    return (p1,p2,p3)
}
