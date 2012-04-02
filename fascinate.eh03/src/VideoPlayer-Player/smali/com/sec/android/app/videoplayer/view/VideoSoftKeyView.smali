.class public abstract Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;
.super Landroid/widget/RelativeLayout;
.source "VideoSoftKeyView.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLeftButton:Landroid/widget/Button;

.field protected mRightButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method
