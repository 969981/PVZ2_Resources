.class public Losdk/okhttp3/Cache$CacheResponseBody$1;
.super Losdk/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/Cache$CacheResponseBody;-><init>(Losdk/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Losdk/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Losdk/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Losdk/okhttp3/Cache$CacheResponseBody;Losdk/okio/Source;Losdk/okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0

    .line 746
    iput-object p1, p0, Losdk/okhttp3/Cache$CacheResponseBody$1;->this$0:Losdk/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Losdk/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Losdk/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Losdk/okio/ForwardingSource;-><init>(Losdk/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 748
    iget-object v0, p0, Losdk/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Losdk/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Losdk/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 749
    invoke-super {p0}, Losdk/okio/ForwardingSource;->close()V

    return-void
.end method
