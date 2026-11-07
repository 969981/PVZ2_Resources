.class public final synthetic Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/talkweb/network/ApiClient;

.field public final synthetic f$1:Lcom/talkweb/network/internal/NativeCall;

.field public final synthetic f$2:Lcom/talkweb/network/internal/NativeRequest;

.field public final synthetic f$3:Lcom/google/gson/reflect/TypeToken;

.field public final synthetic f$4:Lcom/talkweb/network/ApiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/talkweb/network/ApiClient;Lcom/talkweb/network/internal/NativeCall;Lcom/talkweb/network/internal/NativeRequest;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$0:Lcom/talkweb/network/ApiClient;

    iput-object p2, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$1:Lcom/talkweb/network/internal/NativeCall;

    iput-object p3, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$2:Lcom/talkweb/network/internal/NativeRequest;

    iput-object p4, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$3:Lcom/google/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$4:Lcom/talkweb/network/ApiCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$0:Lcom/talkweb/network/ApiClient;

    iget-object v1, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$1:Lcom/talkweb/network/internal/NativeCall;

    iget-object v2, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$2:Lcom/talkweb/network/internal/NativeRequest;

    iget-object v3, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$3:Lcom/google/gson/reflect/TypeToken;

    iget-object v4, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;->f$4:Lcom/talkweb/network/ApiCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/talkweb/network/ApiClient;->lambda$enqueue$0$ApiClient(Lcom/talkweb/network/internal/NativeCall;Lcom/talkweb/network/internal/NativeRequest;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)V

    return-void
.end method
