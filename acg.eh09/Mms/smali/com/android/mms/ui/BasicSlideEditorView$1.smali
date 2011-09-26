.class Lcom/android/mms/ui/BasicSlideEditorView$1;
.super Ljava/lang/Object;
.source "BasicSlideEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BasicSlideEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BasicSlideEditorView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BasicSlideEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 140
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x3e8

    .line 91
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$000(Lcom/android/mms/ui/BasicSlideEditorView;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 93
    .local v2, length:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v4, newText:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 95
    sub-int v6, v2, v8

    sub-int v3, p4, v6

    .line 96
    .local v3, newCount:I
    if-nez p2, :cond_1

    .line 97
    invoke-interface {p1, v9, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, inserted:Ljava/lang/String;
    invoke-interface {p1, p4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, eStr:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$200(Lcom/android/mms/ui/BasicSlideEditorView;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$200(Lcom/android/mms/ui/BasicSlideEditorView;)Landroid/widget/EditText;

    move-result-object v6

    add-int v7, p2, v3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v8, v7

    invoke-static {v6, v7}, Lcom/android/mms/ui/BasicSlideEditorView;->access$302(Lcom/android/mms/ui/BasicSlideEditorView;I)I

    .line 112
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;->onTextChangedToSlideShow(Ljava/lang/String;)V

    .line 117
    .end local v0           #eStr:Ljava/lang/String;
    .end local v1           #inserted:Ljava/lang/String;
    .end local v3           #newCount:I
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$300(Lcom/android/mms/ui/BasicSlideEditorView;)I

    move-result v6

    const/16 v7, 0xa

    if-gt v6, v7, :cond_3

    .line 118
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$400(Lcom/android/mms/ui/BasicSlideEditorView;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v7}, Lcom/android/mms/ui/BasicSlideEditorView;->access$300(Lcom/android/mms/ui/BasicSlideEditorView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$400(Lcom/android/mms/ui/BasicSlideEditorView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    .end local v2           #length:I
    .end local v4           #newText:Ljava/lang/StringBuilder;
    :cond_0
    :goto_2
    return-void

    .line 102
    .restart local v2       #length:I
    .restart local v3       #newCount:I
    .restart local v4       #newText:Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {p1, v9, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, sStr:Ljava/lang/String;
    add-int v6, p2, v3

    invoke-interface {p1, p2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1       #inserted:Ljava/lang/String;
    add-int v6, p2, p4

    invoke-interface {p1, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0       #eStr:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    .end local v0           #eStr:Ljava/lang/String;
    .end local v1           #inserted:Ljava/lang/String;
    .end local v3           #newCount:I
    .end local v5           #sStr:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int v7, v8, v7

    invoke-static {v6, v7}, Lcom/android/mms/ui/BasicSlideEditorView;->access$302(Lcom/android/mms/ui/BasicSlideEditorView;I)I

    goto :goto_1

    .line 121
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v6}, Lcom/android/mms/ui/BasicSlideEditorView;->access$400(Lcom/android/mms/ui/BasicSlideEditorView;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
