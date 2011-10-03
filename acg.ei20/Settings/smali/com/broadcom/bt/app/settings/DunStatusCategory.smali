.class public Lcom/broadcom/bt/app/settings/DunStatusCategory;
.super Landroid/preference/PreferenceCategory;
.source "DunStatusCategory.java"


# instance fields
.field private mStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/settings/DunStatusCategory;->mStatus:Z

    .line 35
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/DunStatusCategory;->setLayoutResource(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 41
    const v3, 0x7f0b0023

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, textView:Landroid/view/View;
    const v3, 0x7f0b0022

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/broadcom/bt/app/settings/DunStatusCategory;->mStatus:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    .line 45
    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void

    .line 44
    .end local v2           #visibility:I
    :cond_0
    const/4 v3, 0x4

    move v2, v3

    goto :goto_0
.end method

.method public setStatus(Z)V
    .locals 0
    .parameter "statusOn"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/broadcom/bt/app/settings/DunStatusCategory;->mStatus:Z

    .line 55
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DunStatusCategory;->notifyChanged()V

    .line 56
    return-void
.end method
