.class Lcom/android/browser/Dots;
.super Landroid/widget/LinearLayout;
.source "Dots.java"


# static fields
.field private static final MAX_DOTS:I = 0x8


# instance fields
.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/Dots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/browser/Dots;->mSelected:I

    .line 43
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/browser/Dots;->setGravity(I)V

    .line 44
    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/android/browser/Dots;->setPadding(IIII)V

    .line 46
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/browser/Dots;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, dotView:Landroid/widget/ImageView;
    const v3, 0x7f020059

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    invoke-virtual {p0, v0, v2}, Lcom/android/browser/Dots;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0           #dotView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method


# virtual methods
.method public setDotCount(I)V
    .locals 5
    .parameter "dotCount"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 62
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    if-gt p1, v3, :cond_1

    .line 63
    invoke-virtual {p0, v4}, Lcom/android/browser/Dots;->setVisibility(I)V

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/browser/Dots;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ge v0, p1, :cond_0

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 65
    goto :goto_1

    .line 68
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/browser/Dots;->setVisibility(I)V

    .line 70
    :cond_2
    return-void
.end method

.method public setSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 73
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v0, p0, Lcom/android/browser/Dots;->mSelected:I

    if-ltz v0, :cond_2

    .line 77
    iget v0, p0, Lcom/android/browser/Dots;->mSelected:I

    invoke-virtual {p0, v0}, Lcom/android/browser/Dots;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/browser/Dots;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iput p1, p0, Lcom/android/browser/Dots;->mSelected:I

    goto :goto_0
.end method
