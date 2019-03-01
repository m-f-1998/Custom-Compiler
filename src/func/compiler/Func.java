package func.compiler;

class Func { // NO_UCD (unused code)

	public static void main(String[] args) throws Exception{
		String fname = "myprogram.flex";
		Parser p = new Parser(fname);
		p = new Parser(fname);
		Method prog = p.Method();
		// Pretty printing of program
		ASTPrinter ast = new ASTPrinter();
		prog.accept(ast);
		
	}
}
