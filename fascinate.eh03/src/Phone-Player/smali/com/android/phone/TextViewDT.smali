.class public Lcom/android/phone/TextViewDT;
.super Landroid/widget/TextView;
.source "TextViewDT.java"


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/TextViewDT;->mWidth:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/TextViewDT;->mWidth:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/TextViewDT;->mWidth:I

    .line 39
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v13, ","

    const-string v12, " "

    .line 43
    invoke-super {p0}, Landroid/widget/TextView;->onPreDraw()Z

    move-result v5

    .line 44
    .local v5, retVal:Z
    iget-object v8, p0, Lcom/android/phone/TextViewDT;->mFullText:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/TextViewDT;->mFullText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_1

    :cond_0
    move v8, v5

    .line 85
    :goto_0
    return v8

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/TextViewDT;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/phone/TextViewDT;->getTotalPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/phone/TextViewDT;->getTotalPaddingRight()I

    move-result v9

    sub-int v2, v8, v9

    .line 49
    .local v2, available:I
    iget v8, p0, Lcom/android/phone/TextViewDT;->mWidth:I

    if-ne v8, v2, :cond_2

    move v8, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iput v2, p0, Lcom/android/phone/TextViewDT;->mWidth:I

    .line 52
    iget-object v8, p0, Lcom/android/phone/TextViewDT;->mFullText:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, arrFullValueParts:[Ljava/lang/String;
    array-length v8, v1

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    move v8, v5

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    aget-object v8, v1, v10

    const-string v9, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, arrFirstValueParts:[Ljava/lang/String;
    const-string v7, ""

    .line 58
    .local v7, sRightPart:Ljava/lang/String;
    const-string v6, ""

    .line 59
    .local v6, sOut:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_4

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    :cond_4
    array-length v8, v0

    if-le v8, v11, :cond_7

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/TextViewDT;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 66
    .local v4, paint:Landroid/graphics/Paint;
    aget-object v6, v0, v10

    .line 68
    const/4 v3, 0x1

    :goto_2
    array-length v8, v0

    if-ge v3, v8, :cond_5

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v9, v2

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 81
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_5
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-virtual {p0, v6}, Lcom/android/phone/TextViewDT;->setText(Ljava/lang/CharSequence;)V

    move v8, v11

    .line 85
    goto/16 :goto_0

    .line 74
    .restart local v4       #paint:Landroid/graphics/Paint;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 78
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_7
    aget-object v6, v0, v10

    goto :goto_3
.end method

.method public setFullText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TextViewDT;->mFullText:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/TextViewDT;->mWidth:I

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/phone/TextViewDT;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
