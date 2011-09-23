.class Lcom/sec/android/app/cradle/MonthView$3;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/MonthView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/MonthView;

.field final synthetic val$startMillis:J


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/MonthView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/sec/android/app/cradle/MonthView$3;->this$0:Lcom/sec/android/app/cradle/MonthView;

    iput-wide p2, p0, Lcom/sec/android/app/cradle/MonthView$3;->val$startMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$3;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-static {v0}, Lcom/sec/android/app/cradle/MonthView;->access$100(Lcom/sec/android/app/cradle/MonthView;)V

    .line 549
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/cradle/MonthView;->access$202(Z)Z

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$3;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/MonthView;->invalidate()V

    .line 551
    return-void
.end method
