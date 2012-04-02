.class final Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Info"
.end annotation


# instance fields
.field public contactId:Ljava/lang/Integer;

.field public photoView:Landroid/widget/QuickContactBadge;

.field public position:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 0
    .parameter "position"
    .parameter "contactId"

    .prologue
    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;->position:I

    .line 1345
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;->contactId:Ljava/lang/Integer;

    .line 1346
    return-void
.end method
