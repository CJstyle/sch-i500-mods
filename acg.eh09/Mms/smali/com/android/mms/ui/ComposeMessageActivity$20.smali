.class Lcom/android/mms/ui/ComposeMessageActivity$20;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onProtocolChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3331
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->val$mms:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 3333
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->val$mms:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 3335
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3336
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3344
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->val$mms:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->val$mms:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6100(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3346
    return-void

    .line 3337
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->val$mms:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 3338
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3339
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3342
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
