.class public Lcom/sec/android/app/cradle/HttpResponseHandler;
.super Ljava/lang/Object;
.source "HttpResponseHandler.java"


# instance fields
.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/cradle/HttpResponseHandler;->response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public onReceive(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 10
    return-void
.end method

.method public setResponse(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sec/android/app/cradle/HttpResponseHandler;->response:Lorg/apache/http/HttpResponse;

    .line 17
    return-void
.end method
