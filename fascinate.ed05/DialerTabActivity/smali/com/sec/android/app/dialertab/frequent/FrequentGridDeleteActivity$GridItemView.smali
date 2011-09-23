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
    .line 719
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 720
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 748
    const v1, 0x7f0600aa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 749
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 750
    check-cast v0, Landroid/widget/CheckBox;

    .end local v0           #check:Landroid/view/View;
    move-object v1, v0

    .line 752
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
    .line 724
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 725
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 728
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
    .line 733
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 734
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 737
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 742
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 745
    :cond_0
    return-void
.end method
