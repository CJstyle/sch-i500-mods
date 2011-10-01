.class public Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteLockedMessages:Z

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 0
    .parameter "threadId"
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    .line 818
    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 819
    iput-object p4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 820
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 810
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    const/16 v3, 0x81

    new-instance v4, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V

    .line 856
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 823
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 824
    return-void
.end method
