.class Lcom/android/mms/ui/ComposeMessageActivity$32;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5300
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 5302
    if-eqz p2, :cond_3

    .line 5304
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AddRecipientButtonEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5305
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AddRecipientButtonEditor;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setVisibility(I)V

    .line 5310
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5314
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5316
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5318
    .local v6, editorText:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 5319
    const/4 v1, 0x0

    .line 5321
    .local v1, editText:Ljava/lang/CharSequence;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5322
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sget v5, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8000(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;IIII)V

    .line 5325
    .end local v1           #editText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 5327
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 5328
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x7f08006b

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 5329
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setNextFocusDownId(I)V

    .line 5340
    .end local v6           #editorText:Ljava/lang/String;
    :goto_0
    return-void

    .line 5332
    .restart local v6       #editorText:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    goto :goto_0

    .line 5337
    .end local v6           #editorText:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMinLines(I)V

    .line 5338
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    goto :goto_0
.end method