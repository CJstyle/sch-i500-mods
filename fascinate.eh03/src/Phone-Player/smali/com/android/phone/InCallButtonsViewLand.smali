.class public Lcom/android/phone/InCallButtonsViewLand;
.super Landroid/widget/RelativeLayout;
.source "InCallButtonsViewLand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsViewLand;->mContext:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/android/phone/InCallButtonsViewLand;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 4

    .prologue
    .line 23
    iget-object v2, p0, Lcom/android/phone/InCallButtonsViewLand;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 24
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030028

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, incallButView:Landroid/view/View;
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 36
    return-void
.end method
