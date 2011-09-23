.class public Lcom/sec/android/app/camera/SelectButtonGroupController;
.super Ljava/lang/Object;
.source "SelectButtonGroupController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/widget/TwSelectButton;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedButton:Lcom/sec/android/app/camera/widget/TwSelectButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mButtonList:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mSelectedButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 40
    return-void
.end method


# virtual methods
.method public addButton(Lcom/sec/android/app/camera/widget/TwSelectButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mButtonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    .line 45
    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public getSelectedButtonId()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mSelectedButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mSelectedButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->getId()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/widget/TwSelectButton;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 87
    .local v0, button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    .line 89
    iput-object v0, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mSelectedButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    goto :goto_0

    .line 91
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    goto :goto_0

    .line 95
    .end local v0           #button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/widget/TwSelectButton;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public setButtonSelected(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 65
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 78
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 69
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/widget/TwSelectButton;>;"
    iget-object v2, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mSelectedButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 71
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 74
    .local v0, button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mSelectedButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->getId()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/camera/SelectButtonGroupController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 100
    return-void
.end method
