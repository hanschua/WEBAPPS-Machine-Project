package enums;

public enum filters_enum {

	SPECIALIZATION ("specialization"),
	CITY ("city"),
	HOSPITAL ("hospital");
	
	private final String text;

    private filters_enum(final String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return text;
    }
    
}
