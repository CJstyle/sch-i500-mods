.class Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mList:Landroid/widget/MultiAutoCompleteTextView;

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "list"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p3, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/MultiAutoCompleteTextView;

    .line 409
    iput-object p2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    .line 410
    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 437
    move v1, p2

    .line 438
    .local v1, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 441
    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 442
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_1

    :cond_0
    move v3, v1

    .line 449
    .end local v0           #c:C
    :goto_1
    return v3

    .line 445
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v3, v2

    .line 449
    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 418
    move v1, p2

    .line 421
    .local v1, i:I
    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_0

    .line 422
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 424
    .end local v0           #c:C
    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    :cond_1
    return v1
.end method

.method public getNumbers()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 484
    .local v4, sp:Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 485
    .local v2, len:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 488
    .local v6, start:I
    const/4 v1, 0x0

    .line 489
    .local v1, i:I
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v1, v7, :cond_4

    .line 491
    if-eq v1, v2, :cond_0

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_0

    const/16 v7, 0x3b

    if-ne v0, v7, :cond_3

    .line 492
    .end local v0           #c:C
    :cond_0
    if-le v1, v6, :cond_1

    .line 493
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$100(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$200(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v5

    .line 500
    .local v5, spanLen:I
    if-le v5, v1, :cond_1

    .line 501
    move v1, v5

    .line 505
    .end local v5           #spanLen:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 507
    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    :cond_2
    move v6, v1

    goto :goto_0

    .line 513
    .restart local v0       #c:C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v0           #c:C
    :cond_4
    return-object v3
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 458
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 460
    :goto_0
    if-lez v1, :cond_0

    sub-int v3, v1, v5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 461
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 465
    :cond_0
    if-lez v1, :cond_2

    sub-int/2addr v1, v5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2

    :cond_1
    move-object v1, p1

    .line 477
    :goto_1
    return-object v1

    .line 470
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v3}, Lcom/android/mms/ui/RecipientsEditor;->access$000(Lcom/android/mms/ui/RecipientsEditor;)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_3

    .line 472
    new-instance v5, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 473
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    move v6, v2

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object v1, v5

    .line 475
    goto :goto_1

    .line 477
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
