package cn.edu.ncu.cs15.dto;

public class WebSocketInMessage {
    private String from;
    private String text;

    public WebSocketInMessage() {
    }

    public WebSocketInMessage(String from, String text) {
        this.from = from;
        this.text = text;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "WebSocketInMessage{" +
                "from='" + from + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
