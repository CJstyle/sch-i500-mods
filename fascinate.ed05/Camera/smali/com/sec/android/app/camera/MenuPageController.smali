.class public Lcom/sec/android/app/camera/MenuPageController;
.super Ljava/lang/Object;
.source "MenuPageController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCurrentPage:I

.field private mPageText:Landroid/widget/TextView;

.field private mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mScrollUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mScroller:Lcom/sec/android/app/camera/widget/TwScroller;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/widget/TextView;)V
    .locals 1
    .parameter "scrollUpButton"
    .parameter "scrollDownButton"
    .parameter "pageText"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 45
    iput-object p2, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object p3, p0, Lcom/sec/android/app/camera/MenuPageController;->mPageText:Landroid/widget/TextView;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/widget/TwScroller;)V
    .locals 1
    .parameter "scroller"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPageText:Landroid/widget/TextView;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuPageController;->mScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwScroller;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public addPage(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuPageController;->setCurrentPage(I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 78
    iget v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuPageController;->setCurrentPage(I)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuPageController;->setCurrentPage(I)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuPageController;->mScrollDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 84
    iget v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuPageController;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 7
    .parameter "currentPage"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v6, "%d / %d"

    .line 90
    if-lt p1, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 103
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iput p1, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPageText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPageText:Landroid/widget/TextView;

    const-string v1, "%d / %d"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mScroller:Lcom/sec/android/app/camera/widget/TwScroller;

    const-string v1, "%d / %d"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->setPageText(Ljava/lang/String;)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuPageController;->mPages:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/app/camera/MenuPageController;->mCurrentPage:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
