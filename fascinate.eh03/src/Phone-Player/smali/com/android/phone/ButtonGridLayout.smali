.class public Lcom/android/phone/ButtonGridLayout;
.super Landroid/view/ViewGroup;
.source "ButtonGridLayout.java"


# instance fields
.field private final COLUMNS:I

.field private final ROWS:I

.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mHeight:I

.field private mHeightInc:I

.field private mWidthInc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->COLUMNS:I

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->ROWS:I

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->COLUMNS:I

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->ROWS:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->COLUMNS:I

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/ButtonGridLayout;->ROWS:I

    .line 75
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, i:I
    sub-int v6, p5, p3

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    add-int v5, v6, v7

    .line 96
    .local v5, y:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 97
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    .line 98
    .local v4, x:I
    const/4 v1, 0x0

    .local v1, col:I
    :goto_1
    const/4 v6, 0x3

    if-ge v1, v6, :cond_0

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, child:Landroid/view/View;
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 103
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    add-int/2addr v4, v6

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    add-int/2addr v5, v6

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v1           #col:I
    .end local v4           #x:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-virtual {p0, v5}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 117
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ButtonGridLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/View;->measure(II)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    .line 124
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingRight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    .line 125
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingBottom:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    .line 126
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    mul-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    .line 128
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4, p1}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v3

    .line 129
    .local v3, width:I
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    invoke-static {v4, p2}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v1

    .line 131
    .local v1, height:I
    invoke-virtual {p0, v3, v1}, Lcom/android/phone/ButtonGridLayout;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method
