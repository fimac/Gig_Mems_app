function createMessageChannel() {
  App.messages = App.cable.subscriptions.create(
    {
      channel: "MessagesChannel",
      chatroom_id: parseInt($("#message_chatroom_id").val())
    },
    {
      received: function(data) {
        $("#messages").removeClass("hidden");

        var para = $("<p>");
        $("#messages").append(para);
        para.text(this.renderMessage(data));
      },
      renderMessage: function(data) {
        return data.user + ": " + data.message;
      }
    }
  );
  return App.messages;
}
