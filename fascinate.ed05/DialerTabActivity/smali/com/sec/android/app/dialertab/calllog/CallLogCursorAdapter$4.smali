.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

.field final synthetic val$logTypeImage:Landroid/widget/ImageView;

.field final synthetic val$num:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;->val$logTypeImage:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;->val$num:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;->val$logTypeImage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;->val$num:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 723
    return-void
.end method
