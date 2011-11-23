.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->attachCloseItemBtnListener(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

.field final synthetic val$closeImage:Landroid/widget/ImageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;->val$closeImage:Landroid/widget/ImageView;

    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const-wide/16 v2, 0xfa

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;->val$closeImage:Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 938
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5$1;

    move-object v1, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;JJLandroid/view/View;)V

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5$1;->start()Landroid/os/CountDownTimer;

    .line 947
    return-void
.end method
