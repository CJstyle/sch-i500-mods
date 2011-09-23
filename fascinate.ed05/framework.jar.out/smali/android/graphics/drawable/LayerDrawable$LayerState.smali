.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveOpacity:Z

.field private mHaveStateful:Z

.field mNum:I

.field private mOpacity:I

.field private mStateful:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 566
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 557
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 560
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    .line 567
    if-eqz p1, :cond_2

    .line 568
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 569
    .local v3, origChildDrawable:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 571
    .local v0, N:I
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 572
    new-array v5, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 574
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 575
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 577
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 578
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v4, v5, v1

    .line 579
    .local v4, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v2, v3, v1

    .line 580
    .local v2, or:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-eqz p3, :cond_0

    .line 581
    iget-object v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    :goto_1
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 586
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 587
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 588
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 589
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 590
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_0
    iget-object v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 593
    .end local v2           #or:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v4           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-boolean v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 594
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 595
    iget-boolean v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    .line 596
    iget-boolean v5, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 597
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 602
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #origChildDrawable:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :goto_2
    return-void

    .line 599
    :cond_2
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 600
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized canConstantState()Z
    .locals 3

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v2, :cond_1

    .line 655
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    .line 656
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 657
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 658
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 659
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    .line 663
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 666
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    iget-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 657
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getOpacity()I
    .locals 5

    .prologue
    .line 620
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v3, :cond_0

    .line 621
    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 631
    :goto_0
    return v3

    .line 624
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 625
    .local v0, N:I
    if-lez v0, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    move v2, v3

    .line 626
    .local v2, op:I
    :goto_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 627
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 625
    .end local v1           #i:I
    .end local v2           #op:I
    :cond_1
    const/4 v3, -0x2

    move v2, v3

    goto :goto_1

    .line 629
    .restart local v1       #i:I
    .restart local v2       #op:I
    :cond_2
    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 630
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    move v3, v2

    .line 631
    goto :goto_0
.end method

.method public final isStateful()Z
    .locals 4

    .prologue
    .line 635
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    if-eqz v3, :cond_0

    .line 636
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 650
    :goto_0
    return v3

    .line 639
    :cond_0
    const/4 v2, 0x0

    .line 640
    .local v2, stateful:Z
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 641
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 642
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    const/4 v2, 0x1

    .line 648
    :cond_1
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 649
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    move v3, v2

    .line 650
    goto :goto_0

    .line 641
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 606
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 611
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method
