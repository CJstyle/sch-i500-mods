.class Lcom/sec/android/app/cradle/MonthView$DismissPopup;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/MonthView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/sec/android/app/cradle/MonthView$DismissPopup;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/cradle/MonthView$DismissPopup;->this$0:Lcom/sec/android/app/cradle/MonthView;

    invoke-static {v0}, Lcom/sec/android/app/cradle/MonthView;->access$500(Lcom/sec/android/app/cradle/MonthView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1637
    return-void
.end method
