.class Lcom/sec/android/app/cradle/MonthView$1;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Lcom/sec/android/app/cradle/TwDayOfMonthCursor$OnCursorMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/MonthView;->init(Lcom/sec/android/app/cradle/CradleMain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/MonthView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/android/app/cradle/MonthView$1;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCusorMoved()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$1;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-static {v0}, Lcom/sec/android/app/cradle/MonthView;->access$000(Lcom/sec/android/app/cradle/MonthView;)Lcom/sec/android/app/cradle/CradleMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleMain;->reloadCurrentDayEvents()V

    .line 304
    return-void
.end method
