.class public Losdk/okhttp3/internal/cache/DiskLruCache$2;
.super Losdk/okhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Losdk/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Losdk/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    const-class v0, Losdk/okhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method constructor <init>(Losdk/okhttp3/internal/cache/DiskLruCache;Losdk/okio/Sink;)V
    .locals 0

    .line 316
    iput-object p1, p0, Losdk/okhttp3/internal/cache/DiskLruCache$2;->this$0:Losdk/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Losdk/okhttp3/internal/cache/FaultHidingSink;-><init>(Losdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 1

    .line 319
    iget-object p1, p0, Losdk/okhttp3/internal/cache/DiskLruCache$2;->this$0:Losdk/okhttp3/internal/cache/DiskLruCache;

    const/4 v0, 0x1

    iput-boolean v0, p1, Losdk/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return-void
.end method
