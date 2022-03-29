
public aspect TraceAspectStewart {
	pointcut classToTrace(): within(*App);
	pointcut MethodToTrace(): classToTrace() && execution(String getName());
	
	before(): MethodToTrace(){
		System.out.println("[BGN]" + thisJoinPoint.getSignature() + ", " + thisJoinPoint.getSourceLocation().getLine());
	}
		
	after(): MethodToTrace(){
		System.out.println("[END]" + thisJoinPoint.getSourceLocation().getFileName());
	}
}
