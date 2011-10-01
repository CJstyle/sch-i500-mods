.class Lcom/android/mms/ui/ComposeMessageActivity$30;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    .line 5171
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 5223
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5227
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 5173
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 15
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 5180
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 5182
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 5184
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5188
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sget v8, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8000(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;IIII)V

    .line 5196
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 5197
    .local v11, length:I
    const/16 v3, 0x3e8

    if-le v11, v3, :cond_0

    .line 5198
    const/16 v3, 0x3e8

    sub-int v3, v11, v3

    sub-int v12, p4, v3

    .line 5199
    .local v12, newCount:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5200
    .local v13, newText:Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    .line 5201
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v12

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5202
    .local v10, inserted:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p4

    move v2, v11

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5203
    .local v9, eStr:Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5204
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5214
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5215
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    add-int v4, p2, v12

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 5216
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$30;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5218
    .end local v9           #eStr:Ljava/lang/String;
    .end local v10           #inserted:Ljava/lang/String;
    .end local v12           #newCount:I
    .end local v13           #newText:Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 5206
    .restart local v12       #newCount:I
    .restart local v13       #newText:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5207
    .local v14, sStr:Ljava/lang/String;
    add-int v3, p2, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v3

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5208
    .restart local v10       #inserted:Ljava/lang/String;
    add-int v3, p2, p4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v11

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5209
    .restart local v9       #eStr:Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5210
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5211
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
