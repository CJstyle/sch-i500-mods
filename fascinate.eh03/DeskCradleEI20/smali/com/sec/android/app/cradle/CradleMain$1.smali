.class Lcom/sec/android/app/cradle/CradleMain$1;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleMain;->reloadCurrentDayEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleMain;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleMain;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$1;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleMain$1;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain$1;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$1;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleMain;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    .line 560
    return-void
.end method
