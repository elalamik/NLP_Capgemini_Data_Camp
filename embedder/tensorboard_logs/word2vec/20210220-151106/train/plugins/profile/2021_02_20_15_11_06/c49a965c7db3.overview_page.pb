?	?ǚ?[A@?ǚ?[A@!?ǚ?[A@	86???Y??86???Y??!86???Y??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?ǚ?[A@??k?@@1Q??????Amq??d???I%??????Yvl?u???*	?MbX?\@2U
Iterator::Model::ParallelMapV2??????!﫺?%8@)??????1﫺?%8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatKY?8?ŝ?!?N?!99@)?n?e????1?۾?N4@:Preprocessing2F
Iterator::Model?"0?70??!?????VE@)"4???ߕ?1R??/?2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceO!W?Y??!#򍃄?+@)O!W?Y??1#򍃄?+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateo.??'H??!&??r??7@)Ӿ??z܇?1)?;b7$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?L?J???!>%?L@)F?2??y?18Gd??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor;?/K;5w?!??ҠW?@);?/K;5w?1??ҠW?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?rK?!q??!y?m!?:@)?"j??Gi?1??n??j@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no976???Y??I???oX@QjK??Mh @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??k?@@??k?@@!??k?@@      ??!       "	Q??????Q??????!Q??????*      ??!       2	mq??d???mq??d???!mq??d???:	%??????%??????!%??????B      ??!       J	vl?u???vl?u???!vl?u???R      ??!       Z	vl?u???vl?u???!vl?u???b      ??!       JGPUY76???Y??b q???oX@yjK??Mh @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?T-???!?T-???"=
 sequential_125/dense_377/SoftmaxSoftmax቞sU??!(?1?????"=
sequential_125/dense_375/MatMulMatMul?HE??u??!<??????0"K
/gradient_tape/sequential_125/dense_376/MatMul_1MatMul?>]?z???!,f?Tv???"K
-gradient_tape/sequential_125/dense_375/MatMulMatMulc?ע??!r2qƣk??0"K
/gradient_tape/sequential_125/dense_377/MatMul_1MatMul?Q?F???!ǋQ,"??"=
sequential_125/dense_376/MatMulMatMul?R?rt??!\?????0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??x????!r˵6???"`
Cgradient_tape/sequential_125/batch_normalization_61/moments/truedivRealDiv?:?79???!Iu ????"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam;r;7q??!??.?????Q      Y@Y??(??(.@a?뺮?:U@q[D?
sQ@y
??%???"?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?69.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 