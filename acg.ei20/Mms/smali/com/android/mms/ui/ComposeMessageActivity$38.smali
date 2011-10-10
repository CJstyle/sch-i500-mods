.class Lcom/android/mms/ui/ComposeMessageActivity$38;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$a:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6657
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->val$a:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6660
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->val$a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 6661
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6664
    .local v1, smiley:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6668
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 6687
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6688
    return-void

    .line 6671
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6673
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x50

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9400(Lcom/android/mms/ui/ComposeMessageActivity;III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6675
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    .line 6681
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
