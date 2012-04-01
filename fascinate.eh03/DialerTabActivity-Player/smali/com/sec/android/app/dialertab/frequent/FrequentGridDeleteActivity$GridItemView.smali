.class public Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
.super Landroid/widget/RelativeLayout;
.source "FrequentGridDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 720
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 721
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 749
    const v1, 0x7f0600aa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 751
    check-cast v0, Landroid/widget/CheckBox;

    .end local v0           #check:Landroid/view/View;
    move-object v1, v0

    .line 753
    :goto_0
    return-object v1

    .restart local v0       #check:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 726
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 729
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 735
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 738
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 743
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 746
    :cond_0
    return-void
.end method
