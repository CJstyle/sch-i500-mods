.class final Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientsMenuClickListener"
.end annotation


# instance fields
.field private final mRecipient:Lcom/android/mms/data/Contact;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter "recipient"

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    .line 1157
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 1160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1178
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1163
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1164
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1165
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1166
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v5

    .line 1167
    goto :goto_0

    .line 1170
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1172
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v5

    .line 1174
    goto :goto_0

    .line 1160
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
