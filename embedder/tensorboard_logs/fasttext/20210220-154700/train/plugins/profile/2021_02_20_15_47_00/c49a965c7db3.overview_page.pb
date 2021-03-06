?	? ?K<@? ?K<@!? ?K<@	`?c@???`?c@???!`?c@???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6? ?K<@ak???:@1?9??*???A\?-??e??I?Fx$??Y?2?FY??*	??Q?uU@2U
Iterator::Model::ParallelMapV2???8???!Ј??DJ>@)???8???1Ј??DJ>@:Preprocessing2F
Iterator::Model??O@???!?}K;?K@)4Փ?Gߔ?1cr샿7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatq<??f??!??9??67@)a7l[?ِ?1??-?+3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!?'0u?+@)'???py?1:װ1?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceՑ#???w?!?x?.??@)Ց#???w?1?x?.??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipVE?ɨ2??!f????F@)?	L?ut?1?׈L??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?(?1kl?!???*@)?(?1kl?1???*@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???O????!H'Am1@)_~?Ɍ?e?1b??G??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9_?c@???IJʈ?x?X@Q[?@ۡ%??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ak???:@ak???:@!ak???:@      ??!       "	?9??*????9??*???!?9??*???*      ??!       2	\?-??e??\?-??e??!\?-??e??:	?Fx$???Fx$??!?Fx$??B      ??!       J	?2?FY???2?FY??!?2?FY??R      ??!       Z	?2?FY???2?FY??!?2?FY??b      ??!       JGPUY_?c@???b qJʈ?x?X@y[?@ۡ%???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits۠iA???!۠iA???"=
 sequential_241/dense_725/SoftmaxSoftmaxa??????!??)???"=
sequential_241/dense_723/MatMulMatMul???h??!???Щ???0"K
/gradient_tape/sequential_241/dense_724/MatMul_1MatMul&&?ݕ?!Q???D??"K
-gradient_tape/sequential_241/dense_723/MatMulMatMul$t ?2E??!????ژ??0"K
/gradient_tape/sequential_241/dense_725/MatMul_1MatMulC??2<4??!'ɡ???"=
sequential_241/dense_724/MatMulMatMulC??2<4??!?)?db???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam????CY??!ED???t??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdama??3|???!???c.???"b
?sequential_241/dropout_241/dropout/random_uniform/RandomUniformRandomUniformŖ?????!'V??????Q      Y@Y[ZZZZZ6@ajiiiiiS@qw?"?:%P@y?k??M???"?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?64.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 