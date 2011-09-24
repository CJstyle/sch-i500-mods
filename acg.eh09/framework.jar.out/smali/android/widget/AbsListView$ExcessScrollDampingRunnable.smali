.class Landroid/widget/AbsListView$ExcessScrollDampingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDampingRunnable"
.end annotation


# static fields
.field static final CK_DYNAMIC:F = 100.0f

.field static final CK_STATIC:F = 200.0f

.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollDampingRunnable"


# instance fields
.field CMAXt:F

.field Ck:F

.field Cm:F

.field private mFirstRun:Z

.field private mStartFromDrag:Z

.field private mStartTime:J

.field final synthetic this$0:Landroid/widget/AbsListView;

.field w0:F

.field x0:F

.field xdot0:F


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 2944
    iput-object p1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2950
    const/high16 v0, 0x42c8

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->Ck:F

    .line 2951
    iput v2, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->Cm:F

    .line 2953
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 2954
    iput v1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->xdot0:F

    .line 2955
    iput v2, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->x0:F

    .line 2956
    iput v1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->w0:F

    return-void
.end method

.method private calcExcessScroll(F)F
    .locals 6
    .parameter "t"

    .prologue
    const/high16 v5, -0x4080

    .line 2991
    iget v1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->x0:F

    iget v2, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->xdot0:F

    iget v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->w0:F

    iget v4, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->x0:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->w0:F

    mul-float/2addr v2, v5

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v1, v2

    .line 2992
    .local v0, ret:F
    iget-boolean v1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mStartFromDrag:Z

    if-nez v1, :cond_0

    .line 2993
    mul-float/2addr v0, v5

    .line 2995
    :cond_0
    return v0
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3022
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 3003
    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mExcessScroll:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mFirstRun:Z

    if-eqz v3, :cond_1

    .line 3004
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mFirstRun:Z

    .line 3005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3006
    .local v1, tNow:J
    iget-wide v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    div-float v0, v3, v4

    .line 3008
    .local v0, t:F
    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, v0}, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->calcExcessScroll(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 3014
    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3016
    .end local v0           #t:F
    .end local v1           #tNow:J
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)Z

    .line 3017
    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 3018
    return-void
.end method

.method start(F)V
    .locals 3
    .parameter "flingSpeed"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2967
    iput-boolean v2, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mFirstRun:Z

    .line 2968
    invoke-virtual {p0}, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->cancel()V

    .line 2970
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 2971
    iput-boolean v2, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mStartFromDrag:Z

    .line 2972
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 2973
    const/high16 v0, 0x4348

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->Ck:F

    .line 2974
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->x0:F

    .line 2982
    :goto_0
    iget v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->Ck:F

    iget v1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->Cm:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->w0:F

    .line 2983
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->Cm:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->xdot0:F

    .line 2985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mStartTime:J

    .line 2987
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2988
    return-void

    .line 2976
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->mStartFromDrag:Z

    .line 2977
    const v0, 0x44a28000

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 2978
    const/high16 v0, 0x42c8

    iput v0, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->Ck:F

    .line 2979
    iput v1, p0, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->x0:F

    goto :goto_0
.end method
