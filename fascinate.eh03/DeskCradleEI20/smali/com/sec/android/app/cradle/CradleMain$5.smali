.class Lcom/sec/android/app/cradle/CradleMain$5;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleMain;->startGetDefaultCityWeather()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$5;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1765
    const-string v0, "CradleMain"

    const-string v1, "onCancel Runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleMain;->access$402(Z)Z

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain$5;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleMain;->access$800(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1768
    return-void
.end method