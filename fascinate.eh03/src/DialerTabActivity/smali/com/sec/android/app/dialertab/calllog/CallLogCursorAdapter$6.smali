.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->attachCallBtnListener(Landroid/database/Cursor;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

.field final synthetic val$callImage:Landroid/widget/ImageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;->val$callImage:Landroid/widget/ImageView;

    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const-wide/16 v2, 0x32

    .line 955
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;->val$callImage:Landroid/widget/ImageView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 957
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6$1;

    move-object v1, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;JJLandroid/view/View;)V

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6$1;->start()Landroid/os/CountDownTimer;

    .line 966
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    .line 968
    :cond_0
    return-void
.end method
