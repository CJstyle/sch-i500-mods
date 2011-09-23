.class Lcom/sec/android/app/camera/MenuHelper$1$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper$1;->run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/MenuHelper$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/MenuHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$1$1;->this$0:Lcom/sec/android/app/camera/MenuHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuHelper$1$1;->this$0:Lcom/sec/android/app/camera/MenuHelper$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0700f9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method
