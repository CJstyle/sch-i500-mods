.class Lcom/sec/android/app/cradle/MonthView$4;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/MonthView;->reloadEvents2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/MonthView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/MonthView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/sec/android/app/cradle/MonthView$4;->this$0:Lcom/sec/android/app/cradle/MonthView;

    iput-object p2, p0, Lcom/sec/android/app/cradle/MonthView$4;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$4;->this$0:Lcom/sec/android/app/cradle/MonthView;

    iget-object v1, p0, Lcom/sec/android/app/cradle/MonthView$4;->val$events:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sec/android/app/cradle/MonthView;->access$302(Lcom/sec/android/app/cradle/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$4;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-static {v0}, Lcom/sec/android/app/cradle/MonthView;->access$400(Lcom/sec/android/app/cradle/MonthView;)V

    .line 578
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/cradle/MonthView;->access$202(Z)Z

    .line 579
    const-string v0, "MonthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/cradle/MonthView$4;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-static {v2}, Lcom/sec/android/app/cradle/MonthView;->access$300(Lcom/sec/android/app/cradle/MonthView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$4;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$4;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-static {v0}, Lcom/sec/android/app/cradle/MonthView;->access$000(Lcom/sec/android/app/cradle/MonthView;)Lcom/sec/android/app/cradle/CradleMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleMain;->reloadCurrentDayEvents()V

    .line 583
    return-void
.end method
