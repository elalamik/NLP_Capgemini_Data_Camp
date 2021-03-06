?	P?>?JD@P?>?JD@!P?>?JD@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-P?>?JD@ɯb??B@1ZJ??Pz??A?EaE??Iˀ??,'@*	g??|??Y@2U
Iterator::Model::ParallelMapV2?????!??ě?A@)?????1??ě?A@:Preprocessing2F
Iterator::Model̚X?+???!?-!?;pL@)?-s?,&??1?øZX05@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?sb?c??!q?1??v4@)????E??1??F\b?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateC??fڎ?!?j????-@)a?????1??t_?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceÝ#??}?!????_@)Ý#??}?1????_@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????뉦?!l??6ďE@)??p?t?1V??x??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??bFx{p?!b?W?@)??bFx{p?1b?W?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapb??!????!?4\0?1@)?Xİ?h?1r??հ@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???r?X@Qn?F;]c??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ɯb??B@ɯb??B@!ɯb??B@      ??!       "	ZJ??Pz??ZJ??Pz??!ZJ??Pz??*      ??!       2	?EaE???EaE??!?EaE??:	ˀ??,'@ˀ??,'@!ˀ??,'@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???r?X@yn?F;]c???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?>?Sau??!?>?Sau??"=
sequential_284/dense_852/MatMulMatMulYZ?m???!????(??0"=
 sequential_284/dense_854/SoftmaxSoftmax|9]?2??!?'?I???"=
sequential_284/dense_853/MatMulMatMul?.??!??!??>?Uq??0"K
-gradient_tape/sequential_284/dense_852/MatMulMatMul}?v?ܑ?!??@????0"K
/gradient_tape/sequential_284/dense_854/MatMul_1MatMul?Mz|?h??!?}P???"Q
7sequential_284/batch_normalization_140/moments/varianceMean?Mz|?h??!?-0????"-
IteratorGetNext/_2_Recvji~}?ߐ?!Q޷????"K
-gradient_tape/sequential_284/dense_853/MatMulMatMulji~}?ߐ?!????????0"K
/gradient_tape/sequential_284/dense_853/MatMul_1MatMul?\a?ڏ?!?U??]???Q      Y@Y??(??(.@a?뺮?:U@q]
?S@yۮ?ʿ???"?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?78.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 