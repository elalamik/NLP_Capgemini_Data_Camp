?	E?$]3??@E?$]3??@!E?$]3??@	*B C????*B C????!*B C????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6E?$]3??@ ?d?F?<@1?ϷKu??A?Z?Ц?Ie?9:Z??Y6?u?!??*	V-??W@2U
Iterator::Model::ParallelMapV22;?ީ??!?&??A@)2;?ީ??1?&??A@:Preprocessing2F
Iterator::Model?"?-?R??!???#M@)???DR??1???,?7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat ?߽?Ɣ?!??Y@?G5@)8j??{??1]?n??w1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??+?F<??!???K?)@) ??	?Yy?1?t??^?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceAgҦ?y?!?x??8?@)AgҦ?y?1?x??8?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip|?o?^}??!?#n??D@)=?Еt?1j???<?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Ң>?m?!UbV???@)??Ң>?m?1UbV???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMape????c??!?h? !/@)????d?1?g4	?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9)B C????I?S??1EX@Q5?5r)@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	 ?d?F?<@ ?d?F?<@! ?d?F?<@      ??!       "	?ϷKu???ϷKu??!?ϷKu??*      ??!       2	?Z?Ц??Z?Ц?!?Z?Ц?:	e?9:Z??e?9:Z??!e?9:Z??B      ??!       J	6?u?!??6?u?!??!6?u?!??R      ??!       Z	6?u?!??6?u?!??!6?u?!??b      ??!       JGPUY)B C????b q?S??1EX@y5?5r)@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits{??0d??!{??0d??"=
sequential_140/dense_420/MatMulMatMul??I?]K??!??4??-??0"=
 sequential_140/dense_422/SoftmaxSoftmax/???.??!?q??s???"=
sequential_140/dense_421/MatMulMatMul&?n?q??!?M`?a??0"-
IteratorGetNext/_1_SendwQL) ???!؉H???"K
/gradient_tape/sequential_140/dense_422/MatMul_1MatMul.uJ?[??!?&?ܿ???"K
-gradient_tape/sequential_140/dense_421/MatMulMatMul???'<??!mQ?_?t??0"L
2sequential_140/batch_normalization_68/moments/meanMeand??x????!?:??l???"K
-gradient_tape/sequential_140/dense_420/MatMulMatMul?J???Ґ?!Oo0D????0"K
/gradient_tape/sequential_140/dense_421/MatMul_1MatMul[?נf???!??=? ???Q      Y@Y??(??(.@a?뺮?:U@qN҅?ۛP@y1?^????"?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 