?	?,`?BC@?,`?BC@!?,`?BC@	??${"@????${"@??!??${"@??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?,`?BC@??:??@@1E? y??AS????g??It?Y?bK@Y???)????*	9??v?j@2U
Iterator::Model::ParallelMapV2?"????!aG!e?J@)?"????1aG!e?J@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??{??m??!Z?.G?3@)ǟ?lXS??16	10@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????]/??!???TF+@)y!????1?????E(@:Preprocessing2F
Iterator::ModelQ?f???!?Z??U?O@)???bE??1:?'Û$@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??9?x?!????/@)??9?x?1????/@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??R?{??!.?.?4B@)$??Ps?1?X???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor<???ܴi?!i?e??)<???ܴi?1i?e??:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap࢓?????!??D`x?4@)[#?qp?h?1?Xb?H??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 88.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?9.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??${"@??I??oRX@Q??(?????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??:??@@??:??@@!??:??@@      ??!       "	E? y??E? y??!E? y??*      ??!       2	S????g??S????g??!S????g??:	t?Y?bK@t?Y?bK@!t?Y?bK@B      ??!       J	???)???????)????!???)????R      ??!       Z	???)???????)????!???)????b      ??!       JGPUY??${"@??b q??oRX@y??(??????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????/??!????/??"=
sequential_157/dense_471/MatMulMatMul?b????!}=#????0"=
 sequential_157/dense_473/SoftmaxSoftmax!O???Y??!a<;%???"=
sequential_157/dense_472/MatMulMatMul?<	?Õ?!??c|????0"K
-gradient_tape/sequential_157/dense_472/MatMulMatMul??$???!&lD????0"K
-gradient_tape/sequential_157/dense_471/MatMulMatMulJ'??t#??!???ӗv??0"=
sequential_157/dense_473/MatMulMatMul"??+=???!ZDE????0"K
/gradient_tape/sequential_157/dense_473/MatMul_1MatMulu
l?]??!??h????"K
/gradient_tape/sequential_157/dense_472/MatMul_1MatMul?L>???!???Yi??"K
-gradient_tape/sequential_157/dense_473/MatMulMatMul???{^Ҋ?!r~??????0Q      Y@Y??(??(.@a?뺮?:U@q?}b3?L@y?|?9??"?
both?Your program is POTENTIALLY input-bound because 88.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?9.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?57.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 