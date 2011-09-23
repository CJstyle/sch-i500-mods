.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    .line 250
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 251
    .local v0, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 252
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$602(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 255
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v1

    .line 261
    .local v1, errorcode:S
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v1

    .line 264
    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 265
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)V

    .line 270
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setResult(ILandroid/content/Intent;)V

    .line 274
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->finish()V

    .line 275
    return-void
.end method
