.class final Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "animationListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

.field private type:I


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;II)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "type"

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->position:I

    .line 1107
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->type:I

    .line 1108
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;IILcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1101
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;II)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 1115
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->type:I

    packed-switch v1, :pswitch_data_0

    .line 1129
    :goto_0
    return-void

    .line 1117
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1119
    .local v0, item:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1121
    .end local v0           #item:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iput-object v3, v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    goto :goto_0

    .line 1124
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iput-object v3, v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    .line 1125
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1112
    return-void
.end method
