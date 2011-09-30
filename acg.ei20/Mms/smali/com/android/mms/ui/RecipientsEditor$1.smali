.class Lcom/android/mms/ui/RecipientsEditor$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAffected:[Landroid/text/Annotation;

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    if-eqz v4, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .local v1, arr$:[Landroid/text/Annotation;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 99
    .local v0, a:Landroid/text/Annotation;
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0           #a:Landroid/text/Annotation;
    .end local v1           #arr$:[Landroid/text/Annotation;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 104
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    check-cast p1, Landroid/text/Spanned;

    add-int v0, p2, p3

    const-class v1, Landroid/text/Annotation;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 86
    if-nez p3, :cond_1

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 87
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 88
    .local v0, c:C
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->access$002(Lcom/android/mms/ui/RecipientsEditor;C)C

    .line 94
    .end local v0           #c:C
    :cond_1
    return-void
.end method
